.class final synthetic Lbwj;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbwk;


# direct methods
.method public constructor <init>(Lbwk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwj;->a:Lbwk;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 1

    iget-object v0, p0, Lbwj;->a:Lbwk;

    iget-object v0, v0, Lbwk;->b:Lbwl;

    iget-object v0, v0, Lbwl;->b:Lbry;

    sget-object v0, Lczr;->a:Lczu;

    return-object v0
.end method
