.class Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryEntry"
.end annotation


# instance fields
.field dir:Ljava/io/File;

.field scrollItem:I

.field scrollOffset:I

.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    return-void
.end method
