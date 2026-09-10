.class Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;
.super Ljava/lang/Object;
.source "ContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->commit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$0(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$3(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Lcom/vkontakte/android/fragments/ContainerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$3(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Lcom/vkontakte/android/fragments/ContainerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ContainerFragment;->access$1(Lcom/vkontakte/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$2(Lcom/vkontakte/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 204
    return-void
.end method
