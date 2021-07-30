.class public final Lcoy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldjj;->a:Ldjj;

    sget-object v1, Lcox;->a:Lcox;

    sget-object v1, Lcox;->e:Ldkg;

    .line 2
    sget-object v2, Ldmz;->n:Ldmz;

    .line 3
    const/4 v3, 0x0

    const v4, 0x85ef9f7

    invoke-static {v0, v3, v1, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Lcoy;->a:Ldjp;

    return-void
.end method
