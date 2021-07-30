.class abstract Lcqk;
.super Lcqg;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcqg;-><init>()V

    iput-object p1, p0, Lcqk;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcqk;->a:Ljava/lang/String;

    return-object v0
.end method
