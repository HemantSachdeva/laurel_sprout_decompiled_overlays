.class public final Lbcy;
.super Lbes;
.source "PG"


# static fields
.field private static final a:Lbeo;

.field private static final i:Lbej;

.field private static final j:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lbcy;->i:Lbej;

    new-instance v2, Lbcw;

    invoke-direct {v2}, Lbcw;-><init>()V

    sput-object v2, Lbcy;->j:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "Checkin.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Lbcy;->a:Lbeo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    sget-object v2, Lbcy;->a:Lbeo;

    new-instance v3, Lbuo;

    invoke-direct {v3}, Lbuo;-><init>()V

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lbuo;[B[B)V

    return-void
.end method
