.class public Lcwg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lcvj;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcvj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcwg;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcwg;->f:I

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcwg;->a:Lcvj;

    return-void
.end method


# virtual methods
.method public final a()Lcwh;
    .locals 1

    iget-object v0, p0, Lcwg;->a:Lcvj;

    iget-object v0, v0, Lcvj;->a:Lcwh;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcwg;->a:Lcvj;

    iget-object v0, v0, Lcvj;->b:Ljava/lang/String;

    return-object v0
.end method
