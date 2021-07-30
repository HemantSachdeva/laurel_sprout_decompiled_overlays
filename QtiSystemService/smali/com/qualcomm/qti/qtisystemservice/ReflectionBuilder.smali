.class public Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder;
.super Ljava/lang/Object;
.source "ReflectionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;,
        Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$Reflection;
    }
.end annotation


# direct methods
.method public static varargs buildMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 121
    new-instance p2, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    invoke-direct {p2, p1, p0}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
