.class public Lcom/vkontakte/android/fragments/ContainerFragment;
.super Landroid/app/Fragment;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;,
        Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;
    }
.end annotation


# instance fields
.field private activityCreated:Z

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
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
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/ContainerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ContainerFragment;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ContainerFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ContainerFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getInnerFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 23
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->activityCreated:Z

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 25
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 26
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 27
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 38
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 41
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 42
    return-void
.end method
