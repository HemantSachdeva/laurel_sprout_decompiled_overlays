.class final synthetic Lbzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbze;


# direct methods
.method public constructor <init>(Lbze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzd;->a:Lbze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lbzd;->a:Lbze;

    iget-object v1, v0, Lbze;->a:Lbzf;

    iget-object v1, v1, Lbzf;->b:Lbzh;

    iget-wide v1, v1, Lbzh;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, v0, Lbze;->a:Lbzf;

    iget-object v1, v1, Lbzf;->b:Lbzh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lbzh;->g:J

    iget-object v0, v0, Lbze;->a:Lbzf;

    iget-object v0, v0, Lbzf;->b:Lbzh;

    iget-object v0, v0, Lbzh;->i:Lbzg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbzg;->d:Z

    :cond_0
    return-void
.end method
