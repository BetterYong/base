#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
int octopus_write_pid (const char *pidfile)
{
  FILE *f;
  int fd;
  int pid;

  if ( ((fd = open(pidfile, O_RDWR|O_CREAT, 0644)) == -1)
       || ((f = fdopen(fd, "r+")) == NULL) ) {
      fprintf(stderr, "Can't open or create %s.\n", pidfile ? pidfile : "(null)");
      return 0;
  }
//文件锁　　只有定义了文件锁才可以
#ifdef HAVE_FLOCK
  if (flock(fd, LOCK_EX|LOCK_NB) == -1) {
      fscanf(f, "%d", &pid);
      fclose(f);
      printf("Can't lock, lock is held by pid %d.\n", pid);
      return 0;
  }
#endif

  pid = getpid();
  if (!fprintf(f,"%d\n", pid)) {
      printf("Can't write pid , %s.\n", strerror(errno));
      close(fd);
      return 0;
  }
  fflush(f);

#ifdef HAVE_FLOCK
  if (flock(fd, LOCK_UN) == -1) {
      printf("Can't unlock pidfile %s, %s.\n", pidfile, strerror(errno));
      close(fd);
      return 0;
  }
#endif
  close(fd);

  return pid;
}
//读取pid　并返回这个pid
int octopus_read_pid(const char *pidfile)
{
  FILE *f;
  int pid;

  if (!(f=fopen(pidfile,"r")))
    return 0;
  fscanf(f,"%d", &pid);
  //打开文件之后需要关闭
  fclose(f);
  return pid;
}
//移除pid 
int octopus_remove_pid(const char *pidfile)
{
  //删除指定的文件
  return unlink (pidfile);
}
