.class public final Lacs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;

.field public static final b:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldis;->a:Ldis;

    .line 2
    sget-object v1, Lacr;->a:Lacr;

    sget-object v1, Lacr;->a:Lacr;

    .line 3
    sget-object v2, Ldmz;->k:Ldmz;

    .line 4
    const/4 v3, 0x0

    const v4, 0x1ad63a5

    invoke-static {v0, v1, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lacs;->a:Ldjp;

    sget-object v0, Ldis;->a:Ldis;

    .line 5
    sget-object v1, Lacq;->a:Lacq;

    sget-object v1, Lacq;->a:Lacq;

    sget-object v2, Ldmz;->k:Ldmz;

    .line 6
    const v4, 0x1ad63a6

    invoke-static {v0, v1, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lacs;->b:Ldjp;

    return-void
.end method
