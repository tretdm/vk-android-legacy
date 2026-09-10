.class Lcom/vkontakte/android/FilePickerActivity$ListItem;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItem"
.end annotation


# instance fields
.field ext:Ljava/lang/String;

.field file:Ljava/io/File;

.field icon:I

.field subtitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;

.field thumb:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->ext:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$ListItem;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    return-void
.end method
