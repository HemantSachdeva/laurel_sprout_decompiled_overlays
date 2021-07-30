.class public final Lblk;
.super Lblg;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lblf;->a:Lblf;

    .line 2
    invoke-direct {p0, p1, v0}, Lblg;-><init>(Landroid/content/Context;Lblf;)V

    iput-object p1, p0, Lblk;->d:Landroid/content/Context;

    .line 3
    new-instance v0, Lbnr;

    .line 4
    invoke-direct {v0, p1}, Lbnr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lblk;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
