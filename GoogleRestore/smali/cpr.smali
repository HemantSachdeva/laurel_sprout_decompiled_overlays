.class public final Lcpr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;

.field public static final b:Ldjp;

.field public static final c:Ldjp;

.field public static final d:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ldis;->a:Ldis;

    .line 2
    sget-object v1, Lcpp;->a:Lcpp;

    sget-object v2, Ldmz;->k:Ldmz;

    .line 3
    const v3, 0x7fe2610

    invoke-static {v0, v1, v3, v2}, Ldkd;->a(Ldlj;Ldlj;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcpr;->a:Ldjp;

    sget-object v0, Ldis;->a:Ldis;

    .line 4
    sget-object v1, Lcpq;->a:Lcpq;

    sget-object v1, Lcpq;->a:Lcpq;

    sget-object v2, Ldmz;->k:Ldmz;

    .line 5
    const/4 v4, 0x0

    const v5, 0x86eb599

    invoke-static {v0, v1, v4, v5, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcpr;->b:Ldjp;

    .line 6
    sget-object v0, Ldiw;->a:Ldiw;

    sget-object v1, Ldmz;->e:Ldmz;

    .line 7
    invoke-static {v0, v4, v4, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcpr;->c:Ldjp;

    sget-object v0, Ldiw;->a:Ldiw;

    .line 8
    sget-object v1, Lcpo;->a:Lcpo;

    sget-object v1, Lcpo;->a:Lcpo;

    sget-object v2, Ldmz;->k:Ldmz;

    .line 9
    const v3, 0xb11a73c

    invoke-static {v0, v1, v4, v3, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcpr;->d:Ldjp;

    return-void
.end method
