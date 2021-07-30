.class public final Lbmk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbeo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Lbej;

.field private static final c:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lbmk;->b:Lbej;

    new-instance v2, Lbmj;

    invoke-direct {v2}, Lbmj;-><init>()V

    sput-object v2, Lbmk;->c:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "Phenotype.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Lbmk;->a:Lbeo;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.clearcut.public"

    invoke-static {v0}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lbes;
    .locals 3

    new-instance v0, Lbes;

    sget-object v1, Lbmk;->a:Lbeo;

    .line 3
    sget-object v2, Lber;->a:Lber;

    invoke-direct {v0, p0, v1, v2}, Lbes;-><init>(Landroid/app/Activity;Lbeo;Lber;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lbes;
    .locals 3

    new-instance v0, Lbes;

    sget-object v1, Lbmk;->a:Lbeo;

    .line 4
    sget-object v2, Lber;->a:Lber;

    invoke-direct {v0, p0, v1, v2}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lber;)V

    return-object v0
.end method
