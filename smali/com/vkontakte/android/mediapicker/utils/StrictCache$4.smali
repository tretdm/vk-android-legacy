.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;->val$key:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$0(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method
