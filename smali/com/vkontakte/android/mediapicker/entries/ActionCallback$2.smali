.class Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->postBack(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback.2;"
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;->this$0:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback.2;"
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;->this$0:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->run(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
