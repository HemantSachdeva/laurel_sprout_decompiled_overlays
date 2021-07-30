.class final synthetic Lcay;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcay;->a:Leip;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcay;->a:Leip;

    check-cast v0, Lbrt;

    invoke-virtual {v0}, Lbrt;->b()Lcat;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
