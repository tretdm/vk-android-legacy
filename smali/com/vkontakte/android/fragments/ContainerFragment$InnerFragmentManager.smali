.class Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;
.super Landroid/app/FragmentManager;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerFragmentManager"
.end annotation


# instance fields
.field private o:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/ContainerFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "orig"    # Landroid/app/FragmentManager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    .line 50
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 55
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/app/FragmentTransaction;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/FileDescriptor;
    .param p3, "arg2"    # Ljava/io/PrintWriter;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public popBackStack()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 105
    return-void
.end method

.method public popBackStack(II)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 115
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/app/Fragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 135
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 140
    return-void
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 1
    .param p1, "arg0"    # Landroid/app/Fragment;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
