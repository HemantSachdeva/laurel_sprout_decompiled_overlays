.class public final Lcoa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldjj;->a:Ldjj;

    .line 2
    sget-object v1, Lcoe;->a:Lcoe;

    sget-object v1, Lcoe;->a:Lcoe;

    .line 3
    sget-object v2, Ldmz;->k:Ldmz;

    .line 4
    const/4 v3, 0x0

    const v4, 0x44f2530

    invoke-static {v0, v1, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcoa;->a:Ldjp;

    return-void
.end method
