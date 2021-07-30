.class public final Ldor;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldim;->a:Ldim;

    .line 2
    sget-object v1, Ldns;->a:Ldns;

    sget-object v1, Ldns;->a:Ldns;

    .line 3
    sget-object v2, Ldmz;->k:Ldmz;

    .line 4
    const/4 v3, 0x0

    const v4, 0x3e735ed

    invoke-static {v0, v1, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldor;->a:Ldjp;

    return-void
.end method
