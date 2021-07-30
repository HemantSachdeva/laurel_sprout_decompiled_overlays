.class final synthetic Lajt;
.super Ljava/lang/Object;

# interfaces
.implements Lbpd;


# instance fields
.field private final a:Lajw;

.field private final b:I


# direct methods
.method public constructor <init>(Lajw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajt;->a:Lajw;

    iput p2, p0, Lajt;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lajt;->a:Lajw;

    iget v1, p0, Lajt;->b:I

    iget-object v0, v0, Lajw;->b:Lajv;

    invoke-interface {v0, p1, v1}, Lajv;->a(Ljava/lang/Object;I)V

    return-void
.end method
