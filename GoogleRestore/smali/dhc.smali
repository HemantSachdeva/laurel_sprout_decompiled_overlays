.class public final Ldhc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldiv;->a:Ldiv;

    sget-object v1, Ldmz;->i:Ldmz;

    .line 2
    const/4 v2, 0x0

    const v3, 0x61ee2d6

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldhc;->a:Ldjp;

    return-void
.end method
