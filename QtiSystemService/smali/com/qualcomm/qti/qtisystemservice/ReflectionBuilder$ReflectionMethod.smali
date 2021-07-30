.class Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;
.super Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$Reflection;
.source "ReflectionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReflectionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$Reflection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$Reflection;-><init>(Ljava/lang/Object;)V

    .line 50
    iput-object p2, p0, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->mCls:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->mCls:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$Reflection;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
