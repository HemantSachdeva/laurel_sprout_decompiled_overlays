.class public final Lash;
.super Lbes;
.source "PG"


# static fields
.field public static final a:Lbjb;

.field private static final i:Lbeo;

.field private static final j:Lbej;

.field private static final k:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lash;->j:Lbej;

    new-instance v2, Lasg;

    invoke-direct {v2}, Lasg;-><init>()V

    sput-object v2, Lash;->k:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "GoogleAuthService.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Lash;->i:Lbeo;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GoogleAuthServiceClient"

    aput-object v2, v0, v1

    .line 2
    invoke-static {v0}, Larw;->a([Ljava/lang/String;)Lbjb;

    move-result-object v0

    sput-object v0, Lash;->a:Lbjb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lash;->i:Lbeo;

    .line 3
    sget-object v1, Lber;->a:Lber;

    invoke-direct {p0, p1, v0, v1}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lber;)V

    return-void
.end method
