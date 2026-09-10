.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;->val$edit:Landroid/widget/EditText;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 940
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PaginationView;->getPageCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v1

    goto :goto_0
.end method
