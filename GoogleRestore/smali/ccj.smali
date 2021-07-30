.class public final Lccj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static volatile a:Lcqu;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcqb;->a:Lcqb;

    sput-object v0, Lccj;->a:Lcqu;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccj;->b:Ljava/lang/Object;

    return-void
.end method
