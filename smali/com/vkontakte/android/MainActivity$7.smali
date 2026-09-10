.class Lcom/vkontakte/android/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 583
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_title"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 584
    .local v0, "btnId":I
    if-nez v0, :cond_0

    const v0, 0x7f09002c

    .line 585
    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/vkontakte/android/MainActivity;->access$2(Lcom/vkontakte/android/MainActivity;Landroid/widget/TextView;)V

    .line 586
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_subtitle"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 587
    if-nez v0, :cond_2

    const v0, 0x7f09002d

    .line 588
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/vkontakte/android/MainActivity;->access$2(Lcom/vkontakte/android/MainActivity;Landroid/widget/TextView;)V

    .line 589
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_5

    .line 590
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 591
    if-nez v0, :cond_4

    const v0, 0x7f09003c

    .line 592
    :cond_4
    if-eqz v0, :cond_5

    .line 593
    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$7;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 594
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 603
    .end local v0    # "btnId":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_5
    :goto_1
    return-void

    .line 595
    .restart local v0    # "btnId":I
    .restart local v1    # "i":I
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 596
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 602
    .end local v0    # "btnId":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 594
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "btnId":I
    .restart local v1    # "i":I
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
