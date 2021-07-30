.class public final Ldnq;
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

    sget-object v1, Ldnn;->a:Ldnn;

    sget-object v1, Ldnn;->d:Ldkg;

    .line 2
    sget-object v2, Ldmz;->n:Ldmz;

    .line 3
    const/4 v3, 0x0

    const v4, 0x3aaedb7

    invoke-static {v0, v3, v1, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldnq;->a:Ldjp;

    sget-object v0, Ldis;->a:Ldis;

    .line 4
    sget-object v1, Ldnp;->a:Ldnp;

    sget-object v1, Ldnp;->e:Ldkg;

    sget-object v2, Ldmz;->n:Ldmz;

    .line 5
    const v4, 0x3aae322

    invoke-static {v0, v3, v1, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldnq;->b:Ldjp;

    return-void
.end method
