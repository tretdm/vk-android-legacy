.class Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, "p":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;->access$0(Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;)Lcom/vkontakte/android/fragments/SuggestionsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onSubscribeClick(I)V

    .line 215
    return-void
.end method
