.class public final Lbdo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbdf;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcct;

.field public static final d:Lj$/util/concurrent/ConcurrentHashMap;

.field public static e:Ljava/lang/Boolean;

.field public static f:Ljava/lang/Long;


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbdo;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lcct;

    .line 2
    invoke-static {}, Lbmk;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 3
    const-string v1, "gms:playlog:service:samplingrules_"

    invoke-virtual {v0, v1}, Lcct;->a(Ljava/lang/String;)Lcct;

    move-result-object v0

    new-instance v1, Lcct;

    iget-object v2, v0, Lcct;->a:Landroid/net/Uri;

    iget-object v3, v0, Lcct;->b:Ljava/lang/String;

    iget-boolean v0, v0, Lcct;->d:Z

    .line 4
    const-string v4, "LogSamplingRulesV2__"

    invoke-direct {v1, v2, v3, v4, v0}, Lcct;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lbdo;->b:Lcct;

    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbdo;->d:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput-object v0, Lbdo;->e:Ljava/lang/Boolean;

    sput-object v0, Lbdo;->f:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbdo;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Lccv;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
