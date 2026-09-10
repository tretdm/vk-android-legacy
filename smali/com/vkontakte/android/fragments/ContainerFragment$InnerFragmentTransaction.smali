.class Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;
.super Landroid/support/v4/app/FragmentTransaction;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerFragmentTransaction"
.end annotation


# instance fields
.field private fragmentsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/support/v4/app/FragmentTransaction;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/ContainerFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/ContainerFragment;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1
    .param p2, "orig"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    .line 155
    iput-object p2, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Lcom/vkontakte/android/fragments/ContainerFragment;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    return-object v0
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    return-object p0
.end method

.method public commit()I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$0(Lcom/vkontakte/android/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 207
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$2(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public commitAllowingStateLoss()I
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$0(Lcom/vkontakte/android/fragments/ContainerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 225
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkontakte/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$2(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$2;-><init>(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 243
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Back stack not supported for inner fragments"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->fragmentsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 273
    return-object p0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;

    .line 279
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 285
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 297
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 303
    return-object p0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 309
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;

    .line 321
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->o:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 327
    return-object p0
.end method
