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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 519
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 520
    .local v0, "a":Landroid/os/Bundle;
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    .line 521
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityGroup;

    invoke-virtual {v4}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 522
    .local v1, "am":Landroid/app/LocalActivityManager;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intent"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 523
    .local v3, "wnd":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, "view":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 547
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v0}, Lcom/vkontakte/android/TabletMainActivity;->access$0(Lcom/vkontakte/android/TabletMainActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
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

    .line 550
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 530
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    .line 531
    .local v2, "instr":Landroid/app/Instrumentation;
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityGroup;

    invoke-virtual {v3}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 532
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

    invoke-virtual {v1, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 533
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 534
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 539
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 540
    .local v1, "instr":Landroid/app/Instrumentation;
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityGroup;

    invoke-virtual {v2}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 541
    .local v0, "am":Landroid/app/LocalActivityManager;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "am":Landroid/app/LocalActivityManager;
    .end local v1    # "instr":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v2

    goto :goto_0
.end method
