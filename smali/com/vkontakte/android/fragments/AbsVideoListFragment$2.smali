.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$2;
.super Ljava/lang/Object;
.source "AbsVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->access$500(Lcom/vkontakte/android/fragments/AbsVideoListFragment;I)V

    .line 144
    return-void
.end method
