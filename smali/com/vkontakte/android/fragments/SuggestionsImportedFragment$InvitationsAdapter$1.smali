.class Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionsImportedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, "p":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;I)V

    .line 166
    return-void
.end method
