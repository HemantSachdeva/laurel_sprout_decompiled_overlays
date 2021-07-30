.class final synthetic Lbui;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbuj;


# direct methods
.method public constructor <init>(Lbuj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbui;->a:Lbuj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbui;->a:Lbuj;

    iget-object v1, v0, Lbuj;->a:Lbtr;

    iget-object v0, v0, Lbuj;->b:Lcrm;

    invoke-virtual {v1, v0}, Lbtr;->a(Lcrm;)V

    return-void
.end method
