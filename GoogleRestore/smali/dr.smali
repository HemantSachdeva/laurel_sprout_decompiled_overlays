.class public final Ldr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldo;


# instance fields
.field public final a:Luj;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Luj;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr;->a:Luj;

    iput p2, p0, Ldr;->c:I

    iput p3, p0, Ldr;->b:I

    return-void
.end method
