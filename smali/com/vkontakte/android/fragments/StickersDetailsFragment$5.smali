.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;)Lcom/vkontakte/android/fragments/StickersDetailsFragment;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 240
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "background_src"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "bgSrc":Ljava/lang/String;
    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "bg":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 270
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;

    invoke-direct {v6, p0, v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 255
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$3(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$1(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 257
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$4(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)[Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$3(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v6, v3

    .line 258
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$1(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$1(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0901a9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    .line 260
    .local v4, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 261
    .local v2, "cur":I
    if-eq v2, v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    if-ne v2, v5, :cond_3

    .line 262
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;

    invoke-direct {v6, p0, v4}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 255
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
