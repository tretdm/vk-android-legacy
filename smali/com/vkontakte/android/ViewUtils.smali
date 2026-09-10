.class public Lcom/vkontakte/android/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 4
    .param p0, "container"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    .end local p0    # "container":Landroid/view/View;
    :goto_0
    return-object p0

    .line 18
    .restart local p0    # "container":Landroid/view/View;
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 25
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 21
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/vkontakte/android/ViewUtils;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    .line 22
    .local v2, "result":Landroid/view/View;
    if-eqz v2, :cond_3

    move-object p0, v2

    goto :goto_0

    .line 20
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)I
    .locals 7
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 79
    .local v3, "rotation":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    .local v4, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 85
    .local v1, "height":I
    if-eqz v3, :cond_0

    .line 86
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :cond_0
    if-gt v1, v4, :cond_3

    .line 87
    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 88
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_2
    if-le v4, v1, :cond_4

    .line 89
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 103
    const-string v5, "vk"

    const-string v6, "Unknown screen orientation. Defaulting to portrait."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x1

    .line 131
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 91
    .end local v2    # "orientation":I
    :pswitch_0
    const/4 v2, 0x1

    .line 92
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 94
    .end local v2    # "orientation":I
    :pswitch_1
    const/4 v2, 0x0

    .line 95
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 97
    .end local v2    # "orientation":I
    :pswitch_2
    const/16 v2, 0x9

    .line 98
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 100
    .end local v2    # "orientation":I
    :pswitch_3
    const/16 v2, 0x8

    .line 101
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 111
    .end local v2    # "orientation":I
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 125
    const-string v5, "vk"

    const-string v6, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    .restart local v2    # "orientation":I
    goto :goto_0

    .line 113
    .end local v2    # "orientation":I
    :pswitch_4
    const/4 v2, 0x0

    .line 114
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 116
    .end local v2    # "orientation":I
    :pswitch_5
    const/16 v2, 0x9

    .line 117
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 119
    .end local v2    # "orientation":I
    :pswitch_6
    const/16 v2, 0x8

    .line 120
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 122
    .end local v2    # "orientation":I
    :pswitch_7
    const/4 v2, 0x1

    .line 123
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .locals 6
    .param p0, "v1"    # Landroid/view/View;
    .param p1, "v2"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-array v0, v2, [I

    .local v0, "p1":[I
    new-array v1, v2, [I

    .line 30
    .local v1, "p2":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    new-instance v2, Landroid/graphics/Point;

    aget v3, v0, v4

    aget v4, v1, v4

    sub-int/2addr v3, v4

    aget v4, v0, v5

    aget v5, v1, v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getViewOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 38
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "getListenerInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    .local v0, "getListenerInfo":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "listenerInfo":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mOnClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 42
    .local v1, "listenerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "getListenerInfo":Ljava/lang/reflect/Method;
    .end local v1    # "listenerField":Ljava/lang/reflect/Field;
    .end local v2    # "listenerInfo":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v3

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setNoClipRecursive(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 49
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 50
    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 53
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 60
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 55
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setNoFitRecursive(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 63
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 64
    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "vg":Landroid/view/ViewGroup;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set no clip on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 75
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 69
    .restart local v0    # "i":I
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ViewUtils;->setNoFitRecursive(Landroid/view/View;)V

    .line 72
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
