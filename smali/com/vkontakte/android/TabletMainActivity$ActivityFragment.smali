.class public Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;
.super Landroid/app/Fragment;
.source "TabletMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/TabletMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityFragment"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 763
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 765
    .local v0, "a":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    .line 767
    .end local v0    # "a":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityGroup;

    invoke-virtual {v3}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 768
    .local v1, "am":Landroid/app/LocalActivityManager;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "intent"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 769
    .local v2, "wnd":Landroid/view/Window;
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->view:Landroid/view/View;

    if-nez v3, :cond_1

    .line 770
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->view:Landroid/view/View;

    .line 771
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->view:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->view:Landroid/view/View;

    return-object v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 794
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v0}, Lcom/vkontakte/android/TabletMainActivity;->access$0(Lcom/vkontakte/android/TabletMainActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityGroup;

    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 777
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 782
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 785
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 791
    return-void
.end method
