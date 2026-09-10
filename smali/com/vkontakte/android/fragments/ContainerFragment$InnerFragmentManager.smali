.class Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;
.super Landroid/support/v4/app/FragmentManager;
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
.field private o:Landroid/support/v4/app/FragmentManager;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/ContainerFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "orig"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    .line 52
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 57
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/support/v4/app/FragmentTransaction;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/FileDescriptor;
    .param p3, "arg2"    # Ljava/io/PrintWriter;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public popBackStack()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 107
    return-void
.end method

.method public popBackStack(II)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 117
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 137
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 142
    return-void
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 1
    .param p1, "arg0"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentManager;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
