.class public final Laul;
.super Lbes;
.source "PG"

# interfaces
.implements Laug;


# static fields
.field public static final a:Lbeo;

.field private static final i:Lbej;

.field private static final j:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Laul;->i:Lbej;

    new-instance v2, Lauk;

    invoke-direct {v2}, Lauk;-><init>()V

    sput-object v2, Laul;->j:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "G1Restore.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Laul;->a:Lbeo;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Laul;->a:Lbeo;

    .line 2
    sget-object v1, Lber;->a:Lber;

    invoke-direct {p0, p1, v0, v1}, Lbes;-><init>(Landroid/app/Activity;Lbeo;Lber;)V

    return-void
.end method
