.class final synthetic Lbzz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcac;


# direct methods
.method public constructor <init>(Lcac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzz;->a:Lcac;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbzz;->a:Lcac;

    invoke-virtual {v0}, Lcac;->d()V

    return-void
.end method
