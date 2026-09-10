.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

.field final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$900(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    .line 235
    return-void
.end method
