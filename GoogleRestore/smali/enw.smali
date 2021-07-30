.class final Lenw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldld;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldmz;->e:Ldmz;

    .line 2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ldmz;->c:Ldmz;

    .line 3
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ldld;

    .line 4
    invoke-direct {v4, v0, v1, v2, v3}, Ldld;-><init>(Ldmz;Ljava/lang/Object;Ldmz;Ljava/lang/Object;)V

    sput-object v4, Lenw;->a:Ldld;

    return-void
.end method
