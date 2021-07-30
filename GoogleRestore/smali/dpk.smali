.class public final Ldpk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;

.field public static final b:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldiv;->a:Ldiv;

    .line 2
    sget-object v1, Ldmz;->h:Ldmz;

    .line 3
    const/4 v2, 0x0

    const v3, 0x11399aa9

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldpk;->a:Ldjp;

    .line 4
    sget-object v0, Ldiw;->a:Ldiw;

    sget-object v1, Ldmz;->h:Ldmz;

    .line 5
    const v3, 0x23a6e05

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldpk;->b:Ldjp;

    return-void
.end method
