.class final synthetic Ldeb;
.super Ljava/lang/Object;

# interfaces
.implements Lddd;


# instance fields
.field private final a:Ldec;


# direct methods
.method public constructor <init>(Ldec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeb;->a:Ldec;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldeb;->a:Ldec;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ldec;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldec;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
