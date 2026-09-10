.class Lcom/vkontakte/android/SuggestionsActivity$3;
.super Ljava/lang/Object;
.source "SuggestionsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountSetInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestionsActivity;->updateIntroFlags(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestionsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestionsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestionsActivity$3;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
