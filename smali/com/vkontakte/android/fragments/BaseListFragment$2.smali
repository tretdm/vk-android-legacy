.class Lcom/vkontakte/android/fragments/BaseListFragment$2;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BaseListFragment;)V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment$2;, "Lcom/vkontakte/android/fragments/BaseListFragment.2;"
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BaseListFragment$2;->this$0:Lcom/vkontakte/android/fragments/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment$2;, "Lcom/vkontakte/android/fragments/BaseListFragment.2;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment$2;->this$0:Lcom/vkontakte/android/fragments/BaseListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onErrorRetryClick()V

    .line 112
    return-void
.end method
