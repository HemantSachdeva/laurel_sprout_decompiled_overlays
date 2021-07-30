.class public Lac;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final b:Ljava/util/Map;

.field public volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lac;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lac;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method
