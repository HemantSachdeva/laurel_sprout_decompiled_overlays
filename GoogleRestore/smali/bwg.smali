.class final synthetic Lbwg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbwl;

.field private final b:Lepb;


# direct methods
.method public constructor <init>(Lbwl;Lepb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwg;->a:Lbwl;

    iput-object p2, p0, Lbwg;->b:Lepb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbwg;->a:Lbwl;

    iget-object v1, p0, Lbwg;->b:Lepb;

    invoke-virtual {v0, v1}, Lbwl;->a(Lepb;)V

    return-void
.end method
