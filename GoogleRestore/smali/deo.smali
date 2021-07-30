.class final synthetic Ldeo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ldep;

.field private final b:Lder;


# direct methods
.method public constructor <init>(Ldep;Lder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeo;->a:Ldep;

    iput-object p2, p0, Ldeo;->b:Lder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldeo;->a:Ldep;

    iget-object v1, p0, Ldeo;->b:Lder;

    iget v1, v1, Lder;->a:I

    invoke-virtual {v0, v1}, Ldep;->a(I)V

    return-void
.end method
