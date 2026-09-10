.class Lcom/vkontakte/android/BoardTopicsActivity$5;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$5;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardTopicsActivity$5;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$5;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$5;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicsActivity;->access$6(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    .line 251
    return-void
.end method
