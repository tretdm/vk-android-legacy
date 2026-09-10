.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->waitAndSendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;->val$progress:Landroid/app/ProgressDialog;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$6(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 259
    return-void
.end method
