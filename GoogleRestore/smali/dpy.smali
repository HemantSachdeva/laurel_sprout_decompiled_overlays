.class public final Ldpy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldjp;

.field public static final b:Ldjp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldil;->a:Ldil;

    .line 2
    sget-object v1, Ldmz;->h:Ldmz;

    .line 3
    const/4 v2, 0x0

    const/16 v3, 0x343b

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldpy;->a:Ldjp;

    .line 4
    sget-object v0, Ldjk;->a:Ldjk;

    sget-object v1, Ldmz;->h:Ldmz;

    .line 5
    const/16 v3, 0x343c

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldpy;->b:Ldjp;

    return-void
.end method
