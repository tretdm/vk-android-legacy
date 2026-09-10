.class Lcom/vkontakte/android/fragments/SuggestionsFragment$2;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->access$100(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->loadData()V

    .line 97
    return-void
.end method
