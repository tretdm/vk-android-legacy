.class public Lcom/vkontakte/android/fragments/ContainerFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;,
        Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;
    }
.end annotation


# instance fields
.field private activityCreated:Z

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

.field private runQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ContainerFragment;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getInnerFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    return-void

    .line 27
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 28
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 44
    return-void

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 40
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
