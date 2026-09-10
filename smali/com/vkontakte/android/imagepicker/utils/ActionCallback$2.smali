.class Lcom/vkontakte/android/imagepicker/utils/ActionCallback$2;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->postBack(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ActionCallback$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ActionCallback$2;->val$result:Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ActionCallback$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ActionCallback$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->run(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
