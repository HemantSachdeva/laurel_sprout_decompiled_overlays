.class public final Lcxl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Lcxk;


# instance fields
.field final b:Lcxk;

.field public final c:Ljava/util/Deque;

.field public d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcxj;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcxj;->a:Lcxj;

    goto :goto_0

    :cond_0
    sget-object v0, Lcxi;->a:Lcxi;

    :goto_0
    sput-object v0, Lcxl;->a:Lcxk;

    return-void
.end method

.method public constructor <init>(Lcxk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcxl;->c:Ljava/util/Deque;

    .line 3
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcxl;->b:Lcxk;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lcxl;->d:Ljava/lang/Throwable;

    :goto_0
    iget-object v1, p0, Lcxl;->c:Ljava/util/Deque;

    .line 4
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcxl;->c:Ljava/util/Deque;

    .line 5
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v2

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcxl;->b:Lcxk;

    .line 7
    invoke-interface {v3, v1, v0, v2}, Lcxk;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcxl;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v1, Ljava/io/IOException;

    .line 8
    invoke-static {v0, v1}, Lcrr;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method
